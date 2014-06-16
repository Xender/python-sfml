#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# pySFML - Python bindings for SFML
# Copyright 2012-2014, Jonathan De Wachter <dewachter.jonathan@gmail.com>
#
# This software is released under the LGPLv3 license.
# You should have received a copy of the GNU Lesser General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.


from libcpp.sfml cimport Time
from libcpp.sfml cimport IpAddress

cdef extern from "SFML/Network.hpp" namespace "sf::IpAddress":
    cdef IpAddress getLocalAddress()
    cdef IpAddress getPublicAddress()
    cdef IpAddress getPublicAddress(Time)

    IpAddress None
    IpAddress LocalHost
    IpAddress Broadcast
