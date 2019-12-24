// Copyright (c) 2018-2019 The Dash Core developers
// Copyright (c) 2018-2019 The PACGlobal developers
// Copyright (c) 2019 The HashShare Coin developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef HASHSHARECOIN_BATCHEDLOGGER_H
#define HASHSHARECOIN_BATCHEDLOGGER_H

#include "tinyformat.h"

class CBatchedLogger
{
private:
    bool accept;
    std::string header;
    std::string msg;
public:
    CBatchedLogger(const std::string& _category, const std::string& _header);
    virtual ~CBatchedLogger();

    template<typename... Args>
    void Batch(const std::string& fmt, const Args&... args)
    {
        if (!accept) {
            return;
        }
        msg += "    " + strprintf(fmt, args...) + "\n";
    }

    void Flush();
};

#endif//HSS_BATCHEDLOGGER_H
