#pragma once

#pragma warning(push, 1)

#define SPDLOG_FMT_EXTERNAL

#include "spdlog/async.h"
#include "spdlog/spdlog.h"
#include "spdlog/async_logger.h"
#include "spdlog/logger.h"
#include "spdlog/sinks/dist_sink.h"
#include "spdlog/sinks/msvc_sink.h"
#include "spdlog/sinks/stdout_color_sinks.h"

#pragma warning(pop)