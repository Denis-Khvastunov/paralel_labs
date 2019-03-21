#include <iostream>
#include <atomic>
#include <random>
#include <thread>
#include <vector>
#include <chrono>
int main() {
    std::atomic_int counter{0};
    std::random_device rd;
    std::mt19937 mt(rd());
    std::uniform_int_distribution<int> dist(0, 10000);
    int arr[1000000];
    for (auto &it : arr){
        it = 1;
    }
    int threads_num = std::thread::hardware_concurrency();
    std::vector<std::thread> threads;
    for (int i(0); i < threads_num; i++){
        threads.emplace_back(std::thread([i,&arr,&counter,&threads_num](){
            int* current = arr + i;
            while (*current == 1){
                counter++;
                current += threads_num;
            }
        }));
    }
    auto start = std::chrono::steady_clock::now();
    for (auto &it : threads){
        it.join();
    }
    auto end = std::chrono::steady_clock::now();

    std::cout <<counter<< " time:" << std::chrono::duration <double, std::milli> (end-start).count()<<std::endl;

    int counter_;
    start = std::chrono::steady_clock::now();
    for (auto it : arr){
        if (it == 1) counter_++;
    }
    end = std::chrono::steady_clock::now();

    std::cout <<counter_<< " time:" << std::chrono::duration <double, std::milli> (end-start).count()<<std::endl;

    return 0;
}