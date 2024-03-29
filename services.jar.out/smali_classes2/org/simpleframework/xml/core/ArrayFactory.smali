.class Lorg/simpleframework/xml/core/ArrayFactory;
.super Lorg/simpleframework/xml/core/Factory;
.source "ArrayFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-void
.end method

.method private getComponentType()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ArrayFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/ArrayFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    const-string v3, "The %s not an array for %s"

    invoke-direct {v1, v3, v2}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private getInstance(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/simpleframework/xml/core/ArrayFactory;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/ArrayInstance;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/core/ArrayInstance;-><init>(Lorg/simpleframework/xml/strategy/Value;)V

    return-object v1

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/simpleframework/xml/core/ArrayFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    const-string v3, "Array of type %s cannot hold %s for %s"

    invoke-direct {v1, v3, v2}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/simpleframework/xml/core/ArrayFactory;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/ElementException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/simpleframework/xml/core/ArrayFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v4, "Array length required for %s at %s"

    invoke-direct {v2, v4, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method
