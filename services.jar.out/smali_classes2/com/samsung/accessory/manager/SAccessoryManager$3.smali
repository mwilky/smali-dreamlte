.class Lcom/samsung/accessory/manager/SAccessoryManager$3;
.super Landroid/os/UEventObserver;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UEventObserver, event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$800(Lcom/samsung/accessory/manager/SAccessoryManager;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$900(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, "USBPD_IDS"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "USBPD_IDS"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :cond_2
    const-string v1, "b001b7ff"

    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1000(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1100(Lcom/samsung/accessory/manager/SAccessoryManager;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    if-eqz v0, :cond_4

    array-length v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    const/4 v2, 0x0

    aget-object v4, v0, v2

    const-string v5, "04e8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1000(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    aget-byte v5, v4, v2

    aget-byte v2, v1, v2

    if-ne v5, v2, :cond_3

    aget-byte v2, v4, v3

    aget-byte v5, v1, v3

    if-lt v2, v5, :cond_3

    aget-byte v2, v4, v3

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    if-gt v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$900(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UEventObserver, event : "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uEvent switch state is not related with usb auth or Factory binary"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
