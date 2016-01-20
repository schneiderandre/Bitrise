//
//  Observable.swift
//  Bitrise
//
//  Created by André Schneider on 19/01/16.
//  Copyright © 2016 André Schneider. All rights reserved.
//

public class Observable<T> {
    public typealias Observer = T -> Void
    private var observers: [Observer] = []

    public func bind(andFire fire: Bool = true, observer: Observer) {
        observers.append(observer)
        if fire {
            observer(value)
        }
    }

    private(set) public var value: T {
        didSet {
            observers.forEach { $0(value) }
        }
    }

    public func value(value: T) {
        self.value = value
    }

    public init(_ value: T) {
        self.value = value
    }
}
