.class Lorg/simpleframework/xml/stream/NodeReader;
.super Ljava/lang/Object;
.source "NodeReader.java"


# instance fields
.field private final reader:Lorg/simpleframework/xml/stream/EventReader;

.field private final stack:Lorg/simpleframework/xml/stream/InputStack;

.field private final text:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/EventReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/simpleframework/xml/stream/InputStack;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/InputStack;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    return-void
.end method

.method private fillText(Lorg/simpleframework/xml/stream/InputNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isText()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private isName(Lorg/simpleframework/xml/stream/EventNode;Ljava/lang/String;)Z
    .locals 2

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/EventNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private readBuffer(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private readStart(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/EventNode;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/stream/InputElement;

    invoke-direct {v0, p1, p0, p2}, Lorg/simpleframework/xml/stream/InputElement;-><init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/NodeReader;Lorg/simpleframework/xml/stream/EventNode;)V

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/stream/InputStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/stream/InputNode;

    return-object v1

    :cond_1
    return-object v0
.end method

.method private readText(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isText()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->fillText(Lorg/simpleframework/xml/stream/InputNode;)V

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readBuffer(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public isEmpty(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRoot(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/InputStack;->bottom()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/InputStack;->isRelevant(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/InputStack;->pop()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/stream/NodeReader;->readStart(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/EventNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/InputStack;->isRelevant(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isText()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->fillText(Lorg/simpleframework/xml/stream/InputNode;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/InputStack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/stream/NodeReader;->isName(Lorg/simpleframework/xml/stream/EventNode;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    return-object v1

    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public readRoot()Lorg/simpleframework/xml/stream/InputNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/InputStack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/stream/NodeException;

    const-string v2, "Document has no root element"

    invoke-direct {v1, v2}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v1
.end method

.method public readValue(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/InputStack;->isRelevant(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v3}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->pop()Ljava/lang/Object;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    :cond_2
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readText(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public skipElement(Lorg/simpleframework/xml/stream/InputNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method
