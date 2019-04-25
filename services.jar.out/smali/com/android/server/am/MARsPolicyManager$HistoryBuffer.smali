.class Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryBuffer"
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/String;

.field private head:I

.field private pointer:I

.field private size:I

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field private totalSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->size:I

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->totalSize:I

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->head:I

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->pointer:I

    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->totalSize:I

    new-array p1, p2, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->buffer:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized getBuffer()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->buffer:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->size:I

    return v0
.end method

.method public declared-synchronized put(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->buffer:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->pointer:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->totalSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->pointer:I

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->size:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->totalSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->head:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->totalSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->head:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
