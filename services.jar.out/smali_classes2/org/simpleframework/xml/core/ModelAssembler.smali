.class Lorg/simpleframework/xml/core/ModelAssembler;
.super Ljava/lang/Object;
.source "ModelAssembler.java"


# instance fields
.field private final builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

.field private final detail:Lorg/simpleframework/xml/core/Detail;

.field private final format:Lorg/simpleframework/xml/stream/Format;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/ExpressionBuilder;Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Lorg/simpleframework/xml/core/Support;->getFormat()Lorg/simpleframework/xml/stream/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelAssembler;->format:Lorg/simpleframework/xml/stream/Format;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method

.method private assembleAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/simpleframework/xml/Order;->attributes()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-virtual {v5, v4}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v5

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Expression;->isAttribute()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Lorg/simpleframework/xml/core/PathException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    iget-object v2, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const-string v2, "Ordered attribute \'%s\' references an element in %s"

    invoke-direct {v6, v2, v7}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_1
    :goto_1
    invoke-interface {v5}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/simpleframework/xml/core/ModelAssembler;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v6}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/simpleframework/xml/core/Model;->registerAttribute(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v5}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private assembleElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/simpleframework/xml/Order;->elements()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-virtual {v5, v4}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v5

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Expression;->isAttribute()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, p1, v5}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/simpleframework/xml/core/PathException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    iget-object v2, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const-string v2, "Ordered element \'%s\' references an attribute in %s"

    invoke-direct {v6, v2, v7}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_1
    return-void
.end method

.method private registerAttribute(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Model;->registerAttribute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1, v0, v2}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p2, v4}, Lorg/simpleframework/xml/core/Expression;->getPath(I)Lorg/simpleframework/xml/core/Expression;

    move-result-object v5

    if-eqz v3, :cond_0

    invoke-direct {p0, v3, v5}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/simpleframework/xml/core/PathException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    iget-object v8, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v8, v7, v4

    const-string v4, "Element \'%s\' does not exist in %s"

    invoke-direct {v6, v4, v7}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttribute(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    :goto_0
    return-void
.end method

.method private registerElement(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v1, v4}, Lorg/simpleframework/xml/core/Model;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/simpleframework/xml/core/PathException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object p2, v6, v3

    const/4 v3, 0x2

    iget-object v7, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v7, v6, v3

    const-string v3, "Ordered element \'%s\' in path \'%s\' is out of sequence for %s"

    invoke-direct {v5, v3, v6}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_1
    :goto_0
    invoke-interface {p1, v1, v0, v2}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    return-void
.end method

.method private registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-interface {p1, v1, v0, v2}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p2, v4}, Lorg/simpleframework/xml/core/Expression;->getPath(I)Lorg/simpleframework/xml/core/Expression;

    move-result-object v4

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v3, v4}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElement(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    return-void
.end method


# virtual methods
.method public assemble(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->assembleElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->assembleAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V

    return-void
.end method
