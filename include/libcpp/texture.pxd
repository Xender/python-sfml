#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# pySFML - Python bindings for SFML
# Copyright 2012-2014, Jonathan De Wachter <dewachter.jonathan@gmail.com>
#
# This software is released under the LGPLv3 license.
# You should have received a copy of the GNU Lesser General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.


from libcpp.sfml cimport Texture


cdef extern from "SFML/Graphics.hpp" namespace "sf::Texture":
    cdef unsigned int getMaximumSize()

    cdef enum CoordinateType:
        Normalized
        Pixels

    cdef void bind(const Texture*)
    cdef void bind(const Texture*, CoordinateType)
