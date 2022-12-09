class TodoList
    def initialize
        @task = []
    end

    def add(task)
        @task << task
    end

    def list 
        return @task
    end 

    def complete(task)
        fail "No such task" unless @task.include? task

        @task.delete(task)
    end
end