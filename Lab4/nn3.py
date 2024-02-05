AND_DATA = [
    [0, 0, 0, 0],
    [1, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 1, 0],
    [1, 1, 0, 0],
    [1, 0, 1, 0],
    [0, 1, 1, 0],
    [1, 1, 1, 1],
]

OR_DATA = [
    [0, 0, 0, 0],
    [1, 0, 0, 1],
    [0, 1, 0, 1],
    [0, 0, 1, 1],
    [1, 1, 0, 1],
    [1, 0, 1, 1],
    [0, 1, 1, 1],
    [1, 1, 1, 1],
]

NAND_DATA = [
    [0, 0, 0, 1],
    [1, 0, 0, 1],
    [0, 1, 0, 1],
    [0, 0, 1, 1],
    [1, 1, 0, 1],
    [1, 0, 1, 1],
    [0, 1, 1, 1],
    [1, 1, 1, 0],
]

NOR_DATA = [
    [0, 0, 0, 1],
    [1, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 1, 0],
    [1, 1, 0, 0],
    [1, 0, 1, 0],
    [0, 1, 1, 0],
    [1, 1, 1, 0],
]


def perceptron(weights, data, learning_rate, num_epochs, threshold=0, bias=0):
    input_size = len(weights)
    if num_epochs == -1:
        num_epochs = 1000
    for epoch in range(num_epochs):
        done = True
        for d in data:
            output = bias
            for weight, input in zip(weights, d[:input_size]):
                output += weight * input
            if output > threshold:
                output = 1
            else:
                output = 0
            if d[-1] - output:
                for i in range(len(weights)):
                    # print(learning_rate, (d[-1]-output), input)
                    weight = weights[i]
                    input = d[i]
                    weight += learning_rate * (d[-1] - output) * input
                    weights[i] = weight
                bias += learning_rate * (d[-1] - output)
                done = False
                break
        if done:
            print(f"Done after {epoch} epochs")
            break
    return weights, bias


def forward(weights, data, threshold, bias):
    input_size = len(weights)
    output = 0
    for weight, input in zip(weights, data[:input_size]):
        output += weight * input
    output += bias
    if output > threshold:
        output = 1
    else:
        output = 0
    return output


GATES = {"AND": AND_DATA, "OR": OR_DATA, "NAND": NAND_DATA, "NOR": NOR_DATA}

for gate_name, data in GATES.items():
    theta = 0
    init_weights = [0, 0, 0]
    learning_rate = 0.2
    num_epochs = -1
    init_bias = 0
    print(f"Gate: {gate_name}")
    print(
        f"Running Training...\nHyperparameters:\nInitial Weights: {init_weights}\nLearning Rate: {learning_rate}\nThreshold: {theta}\nBias: {init_bias}"
    )
    weights, bias = perceptron(
        init_weights, data, learning_rate, num_epochs, theta, init_bias
    )
    print(f"\nFinal Weights: {weights}\nFinal Bias: {bias}")
    print("\nRunning Validation...")
    for d in data:
        print(
            f"Input: {d[:-1]} \nOutput: {forward(weights, d, theta, bias)}\nActual Value: {d[-1]}"
        )
    print("\n\n\n\n\n")
