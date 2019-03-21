#include <iostream>
#include <random>
#include <functional>
#include <utility>
#include <algorithm>
#include <iterator>
#include <chrono>
#include <vector>
#include <thread>

int main() {
    int n = 10000;
    std::cout << std::thread::hardware_concurrency() << std::endl;
    std::vector<std::vector<int>> matrix(n, std::vector<int>(n));
    std::vector<int> vector(n);
    std::vector<int> final;
    std::random_device device;
    std::mt19937 generator(device());
    std::uniform_int_distribution<int> distribution(1,9);
    auto gen = [&distribution, &generator](){
        return distribution(generator);
    };
    std::generate (std::begin(vector), std::end(vector), gen);
    std::for_each(std::begin(matrix), std::end(matrix),[&distribution, &generator](auto& v) mutable {
        std::generate(std::begin(v), std::end(v), [&](){
            return distribution(generator);
        });
    });
//    std::for_each(std::begin(matrix), std::end(matrix),[](auto& v){
//        for( auto e: v)
//            std::cout << e << "  ";
//        std::cout << "\n";
//    });
    std::cout << "Hello, World!" << std::endl;
//    for (auto it : vector){
//        std::cout<<it<<" ";
//    }
    std::cout << std::endl << "Hello, World!" << std::endl;
    auto start = std::chrono::steady_clock::now();
    std::for_each(std::begin(matrix), std::end(matrix),[&vector, &final, &n](auto& str){
        int sum = 0;
        for (int i(0); i < n; i++){
             sum+= str[i] * vector[i];
        };
        final.push_back(sum);
    });
    auto stop = std::chrono::steady_clock::now();
//    for (auto it : final){
//        std::cout<<it<<" ";
//    }
    std::cout << std::endl << "it worked " <<std::chrono::duration <double, std::milli> (stop-start).count() << " ms" << std::endl;

    std::vector<std::thread> threads;
    std:: vector<int> _final(n);
    for (int i(0); i < 4; i++) {
        threads.emplace_back(
                std::thread([i, n, &_final, &vector, &matrix]() {
                    int j = i;
                    while (j < n) {
                        int sum = 0;
                        for (int it(0); it < n; it++) {
                            sum += matrix[j][it] * vector[it];
                        };
                        _final.at(j) = sum;
                        j += 4;
                    }
                }));
    }
    start = std::chrono::steady_clock::now();
    std::for_each(threads.begin(), threads.end(), [](std::thread &t)
        {
            t.join();
        });
    stop = std::chrono::steady_clock::now();
//    for (auto it : _final){
//        std::cout<<it<<" ";
//    }
    std::cout << std::endl << "it worked " <<std::chrono::duration <double, std::milli> (stop-start).count() << " ms" << std::endl;

    return 0;
}