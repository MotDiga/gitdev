#include <stdmoh.h>
#include <stderr.h>


real64_t train[][2UL] = { 
    {   1.,   5. },
    {   5.,  25. },
    {  10.,  50. },
    {  50., 250. },
    { 100., 500. }
};
real64_t rate = 1e-4, eps = 1e-6;


real64_t loss_func(real64_t w);


int32_t main(int32_t argc, string_t argv[])
{
    puts("Salam Alicom");

    // srand(time());
    srand(65536U);

    real64_t w = (((real64_t)rand() / (real64_t)RAND_MAX) * 20.) - 10.;
    // real64_t b = (((real64_t)rand() / (real64_t)RAND_MAX) * 10.) - 5.;
    printf("w = %10.7lf\n\n", w);

    real64_t old_loss = loss_func(w);
    printf("loss = %16.7lf\n", old_loss);
    real64_t new_loss = loss_func(w + eps);
    real64_t dloss = (new_loss - old_loss) / eps;
    printf("dloss = %16.7lf\n", dloss);
    w -= dloss * rate;
    printf("w = %16.7lf\n", w);
    printf("loss = %16.7lf\n", loss_func(w));

    return 0;
}


real64_t loss_func(real64_t w)
{
    real64_t loss = 0.;
    size_t train_count = sizeof(train) / sizeof(real64_t[2UL]);
    for (size_t itr = 0UL; itr < train_count; itr++)
    {
        real64_t d = (train[itr][0UL] * w) - train[itr][1UL];
        loss += d*d;
        // printf("d*d = %16.7lf\n", d*d);
    }

    loss /= train_count;
    return loss;
}