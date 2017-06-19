//
//  Observable.swift
//  Bitrise
//
//  Created by André Schneider on 19/01/16.
//  Copyright © 2016 André Schneider. All rights reserved.
//

open class Observable<T> {
    public typealias Observer = (T) -> Void
    fileprivate var observers: [Observer] = []

    open func bind(andFire fire: Bool = true, observer: @escaping Observer) {
        observers.append(observer)
        if fire {
            observer(value)
        }
    }

    fileprivate(set) open var value: T {
        didSet {
            observers.forEach { $0(value) }
        }
    }

    open func value(_ value: T) {
        self.value = value
    }

    public init(_ value: T) {
        self.value = value
    }
}
