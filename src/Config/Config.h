#include <string>

#include "Argon2/Constants.h"

namespace Config
{
    class Config
    {
      public:
        Config() {};

        Constants::OptimizationMethod optimizationMethod;
    };

    extern Config config;
}
