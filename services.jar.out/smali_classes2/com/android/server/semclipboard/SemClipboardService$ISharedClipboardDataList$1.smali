.class Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList$1;
.super Landroid/sec/clipboard/data/IClipboardDataList$Stub;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;


# direct methods
.method constructor <init>(Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    invoke-direct {p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    return-object v0
.end method

.method public removeData(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;->removeData(I)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    invoke-virtual {v0}, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;->size()I

    move-result v0

    return v0
.end method

.method public updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService$ISharedClipboardDataList;->updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    return v0
.end method
