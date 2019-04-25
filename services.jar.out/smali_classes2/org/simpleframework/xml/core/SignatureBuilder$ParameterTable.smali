.class Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;
.super Ljava/util/ArrayList;
.source "SignatureBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/SignatureBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParameterTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I
    .locals 1

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I
    .locals 1

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->height()I

    move-result v0

    return v0
.end method

.method private height()I
    .locals 2

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v1

    return v1

    :cond_0
    return v1
.end method

.method private width()I
    .locals 1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    return-object v0
.end method

.method public get(II)Lorg/simpleframework/xml/core/Parameter;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;
    .locals 3

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-gt v1, p1, :cond_0

    new-instance v2, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>()V

    invoke-virtual {p0, v2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    return-object v1
.end method

.method public insert(Lorg/simpleframework/xml/core/Parameter;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
