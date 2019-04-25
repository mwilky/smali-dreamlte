.class Lcom/android/server/nextapp/LoopStack;
.super Ljava/lang/Object;
.source "Collector.java"


# instance fields
.field stack:[Ljava/lang/String;

.field top:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/nextapp/LoopStack;->top:I

    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "unknown"

    const-string/jumbo v2, "unknown"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/nextapp/LoopStack;->stack:[Ljava/lang/String;

    return-void
.end method

.method private pop(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/nextapp/LoopStack;->top:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/nextapp/LoopStack;->stack:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/nextapp/LoopStack;->top:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/nextapp/LoopStack;->stack:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/nextapp/LoopStack;->top:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public declared-synchronized pop3()[Ljava/lang/String;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/nextapp/LoopStack;->pop(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized push(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/nextapp/LoopStack;->stack:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/nextapp/LoopStack;->top:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/android/server/nextapp/LoopStack;->top:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/nextapp/LoopStack;->top:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/nextapp/LoopStack;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
