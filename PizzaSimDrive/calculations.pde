PVector calculateMoveDistance(PVector initialPos, PVector finalPos, float frameDuration) {
    float xDiff = (finalPos.x - initialPos.x)/frameDuration;
    float yDiff = (finalPos.y - initialPos.y)/frameDuration;
    PVector output = new PVector(xDiff, yDiff);
    return(output);
}