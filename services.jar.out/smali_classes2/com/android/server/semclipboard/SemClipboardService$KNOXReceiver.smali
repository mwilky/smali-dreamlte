.class Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KNOXReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KNOXReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$900(Lcom/android/server/semclipboard/SemClipboardService;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SemClipboardService"

    const-string/jumbo v2, "null"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1000(Lcom/android/server/semclipboard/SemClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SemClipboardService"

    const-string/jumbo v3, "size is null"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$1100(Lcom/android/server/semclipboard/SemClipboardService;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    goto/16 :goto_3

    :cond_3
    const-string v1, "enterprise.container.remove.progress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "enterprise.container.uninstalled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v1, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v1}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive intent from KNOX-clipboard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_5
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isKnoxTwoEnabled mDataList.size()  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_6
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1200(Lcom/android/server/semclipboard/SemClipboardService;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$900(Lcom/android/server/semclipboard/SemClipboardService;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1000(Lcom/android/server/semclipboard/SemClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "SWITCHED"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/semclipboard/SemClipboardService;->multiUserMode(ILjava/lang/String;)V

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kiosk container id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "resetOnReoot"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_9
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isKioskEnabled mDataList.size()  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v5}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "resetOnReoot"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    nop

    :goto_2
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_b
    :goto_3
    return-void
.end method
