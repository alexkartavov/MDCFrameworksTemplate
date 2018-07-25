#!/bin/bash
#Create fat binaries from the [built frameworks](#Framework dependencies)

for f in MaterialComponents MotionInterChange MotionAnimator MotionTransitioning MDFInternationalization MDFTextAccessibility
    do
        # Copy the required headers and other files.
        cp -pr ./build/Debug-iphoneos/${f}/${f}.framework Frameworks/
        lipo -create ./build/Debug-iphone*/${f}/${f}.framework/${f} -output Frameworks/${f}.framework/${f}
        lipo -info ./Frameworks/${f}.framework/${f}
    done