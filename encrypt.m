% This encodes and then decodes a predefined message

original = 'This is my top secret message!';
encodingVector = randperm(length(original));
encoded = original(1,encodingVector);
tempMatrix = [encodingVector' (1:length(original))'];
sortrows(tempMatrix,1);
decodingVector = ans(:,2);
decoded = encoded(1,decodingVector);
correct = strcmp(encoded,decoded);
disp(['Original: ' original]);
disp(['Encoded: ' encoded]);
disp(['Decoded: ' decoded]);
disp(['Decoded Correctly (1 for true, 0 for false): ' num2str(correct)]);