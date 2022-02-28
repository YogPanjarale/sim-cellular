// Copyright (C) 2022 Yog Panjarale. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import bytes
import log
import uart
import at

import .simcom

/**
Driver for Sequans Monarch, GSM communicating over NB-IoT & M1.
*/
class Sim800 extends SimComCellular:
  constructor
      uart
      --logger=log.default:
    super uart --logger=logger --default_baud_rate=921600 --use_psm=false

  on_connected_ session/at.Session:

  on_reset session/at.Session:
