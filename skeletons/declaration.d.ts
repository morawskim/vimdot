/** Global Variables */
declare var foo: number;

/** Global Functions */
declare function greet(greeting: string): void;

/** Objects with Properties */
declare namespace myLib {
    function makeGreeting(s: string): string;
    let numberOfGreetings: number;
}

declare namespace GreetingLib {
    interface LogOptions {
        verbose?: boolean;
    }
    interface AlertOptions {
        modal: boolean;
        title?: string;
        color?: string;
    }
}

declare class Greeter {
    constructor(greeting: string);

    greeting: string;
    showGreeting(): void;
}

declare module ErrorHelper {
    function containsErrors(response);
    function trace(message);
}


/** @link https://www.typescriptlang.org/docs/handbook/declaration-files/by-example.html */
/** @link https://subscription.packtpub.com/book/application_development/9781786468710/5 */
