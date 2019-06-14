#! /bin/bash
if [ $# != 1 ] || [ $1 != "validate" -a $1 != "full" ]; then
    echo "Please pass 'validate' or 'full' parameter."
    exit 1
fi
echo "Log step: after validating parameters."
run_command()
{
    echo "Running: $1"
    $1
    if [ $? != 0 ]; then
        echo "Failed: $1"
        exit 1
    else
        echo "Passed: $1"
    fi
}
echo "Log step: after run_command() decalaration."

COMMANDS=()

echo "Log step: after COMMAND=() decalaration."

if [ $1 == "validate" ] || [ $1 == "full" ]
then
    COMMANDS+=("terraform fmt -list=true -check=true -write=false")
    COMMANDS+=("terraform validate -check-variables=false")
    COMMANDS+=("dep ensure")
fi

if [ $1 == "full" ]; then
    COMMANDS+=("go test -v ./test/ -timeout 20m")
fi

for command in "${COMMANDS[@]}"
do
    run_command "$command"
done
