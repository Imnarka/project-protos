PROTOS  := proto/user/user.proto proto/task/task.proto
OUT_DIR := .

generate:
	@echo Generating proto files: $(PROTOS)
	protoc \
	  --go_out=$(OUT_DIR) --go_opt=paths=source_relative \
	  --go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative \
	  $(PROTOS)

clean:
	del /S *.pb.go