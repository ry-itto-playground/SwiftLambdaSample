import AWSLambdaRuntime

Lambda.run { (context, content: String, closure: @escaping (Result<String, Error>) -> Void) in
    closure(.success(content))
}
