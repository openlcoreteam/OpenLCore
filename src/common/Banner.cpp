/*
 * Copyright (C) 2008-2018 TrinityCore <https://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Banner.h"
#include "GitRevision.h"
#include "StringFormat.h"

void Trinity::Banner::Show(char const* applicationName, void(*log)(char const* text), void(*logExtraInfo)())
{
	log(" ");
    log("  _____                    _       ______                 ");
    log(" / ___ \\                  | |     / _____)                ");
    log("| |   | |____   ____ ____ | |    | /      ___   ____ ____ ");
    log("| |   | |  _ \\ / _  )  _ \\| |    | |     / _ \\ / ___) _  )");
    log("| |___| | | | ( (/ /| | | | |____| \____| |_| | |  ( (/ / ");
    log(" \\_____/| ||_/ \\____)_| |_|_______)______)___/|_|   \____)");
    log("        |_|      ");
log(" https://github.com/openlcoreteam/OpenLCore        ");
log(" OpenLCore is based on MagicStorm/AshamaneCore/TrinityCore        ");
log(" https://github.com/openlcoreteam/OpenLCore.git        ");
	log(" ");

    if (logExtraInfo)
        logExtraInfo();
}
