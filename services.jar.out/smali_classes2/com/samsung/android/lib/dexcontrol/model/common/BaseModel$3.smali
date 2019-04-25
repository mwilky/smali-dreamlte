.class Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;
.super Landroid/content/BroadcastReceiver;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7e02a835

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not in Case"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->access$000(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;Landroid/hardware/usb/UsbDevice;)V

    :cond_3
    :goto_2
    return-void
.end method
