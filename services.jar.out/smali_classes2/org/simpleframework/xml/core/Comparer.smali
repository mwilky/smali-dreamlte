.class Lorg/simpleframework/xml/core/Comparer;
.super Ljava/lang/Object;
.source "Comparer.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private final ignore:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Comparer;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    return-void
.end method

.method private isIgnore(Ljava/lang/reflect/Method;)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    invoke-direct {p0, v7}, Lorg/simpleframework/xml/core/Comparer;->isIgnore(Ljava/lang/reflect/Method;)Z

    move-result v8

    if-nez v8, :cond_0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v7, p2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    return v4

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3

    :cond_2
    return v4
.end method
