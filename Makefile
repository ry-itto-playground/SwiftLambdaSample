package:
	docker build -t swift-lambda-builder .
	docker run --rm -v $(PWD):/workspace -w /workspace swift-lambda-builder \
	    bash -cl "swift build -c release" 
	docker run --rm -v $(PWD):/workspace -w /workspace swift-lambda-builder \
	    bash -cl "chmod u+x ./scripts/package.sh;./scripts/package.sh"
