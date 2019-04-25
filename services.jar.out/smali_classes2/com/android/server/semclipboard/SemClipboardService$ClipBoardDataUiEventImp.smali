.class Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;
.super Ljava/lang/Object;
.source "SemClipboardService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataUiEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipBoardDataUiEventImp"
.end annotation


# instance fields
.field private final mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

.field final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp$1;

    invoke-direct {p1, p0}, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp$1;-><init>(Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;)V

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/android/server/semclipboard/SemClipboardService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-object v0
.end method

.method public removeAll()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "SemClipboardService"

    const-string v1, "Remove All"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    instance-of v4, v3, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    move-object v5, v3

    check-cast v5, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/semclipboard/SemClipboardService;->access$500(Lcom/android/server/semclipboard/SemClipboardService;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v3}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$600(Lcom/android/server/semclipboard/SemClipboardService;I)V

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/semclipboard/SemClipboardService;->access$700(Lcom/android/server/semclipboard/SemClipboardService;ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v3, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$402(Lcom/android/server/semclipboard/SemClipboardService;Z)Z

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeItem(I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "SemClipboardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeItem index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v2}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v5}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    move-object v0, v5

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v5}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v5

    move v1, v5

    goto :goto_0

    :cond_0
    sub-int v5, p1, v2

    const-string v6, "SemClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data list size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " shared index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    move-object v0, v6

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v6

    move v1, v6

    :goto_0
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    if-gtz v6, :cond_1

    move v3, v4

    nop

    :cond_1
    invoke-static {v5, v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$402(Lcom/android/server/semclipboard/SemClipboardService;Z)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    move-object v0, v2

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v2

    move v1, v2

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v5}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    if-lez v5, :cond_3

    move v3, v4

    nop

    :cond_3
    invoke-static {v2, v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$402(Lcom/android/server/semclipboard/SemClipboardService;Z)Z

    :goto_1
    instance-of v2, v0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$500(Lcom/android/server/semclipboard/SemClipboardService;Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$600(Lcom/android/server/semclipboard/SemClipboardService;I)V

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v2, v3, v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$700(Lcom/android/server/semclipboard/SemClipboardService;ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, "SemClipboardService"

    const-string v1, "ClipboardDataPasteEvent is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    const-string v0, "SemClipboardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectItem index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v1}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    sub-int v2, p1, v1

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " shared index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    move-object v0, v3

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    move-object v0, v1

    :goto_1
    instance-of v1, v0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p2, v0}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$800(Lcom/android/server/semclipboard/SemClipboardService;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setContentUri(Landroid/net/Uri;)V

    :cond_4
    invoke-interface {p2, v0}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    nop

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
