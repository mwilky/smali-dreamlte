.class Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;
.super Landroid/content/BroadcastReceiver;
.source "FanControlModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->initFanControlReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    const-string/jumbo v3, "siop_level_broadcast"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$602(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;I)I

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver - SIOP LEVEL : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$600(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$102(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive - mIDexFanControl is null"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$700(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$600(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSiopLevel(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive - mIDexFanControl is null"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "com.samsung.intent.action.CHECK_SIOP_LEVEL_TEMP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "siop_level_broadcast"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$102(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$702(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIOP LEVEL FROM TEST APP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$700(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$100(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSiopLevel(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "com.samsung.accessory.action.DEX_FAN_ON_TEMP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setFanLevelForTest(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "com.samsung.accessory.action.DEX_FAN_OFF_TEMP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setFanLevelForTest(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$802(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$400(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSystemRequest(Z)V

    goto :goto_0

    :cond_6
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$802(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$400(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSystemRequest(Z)V

    goto :goto_0

    :cond_7
    const-string v0, "com.samsung.accessory.action.DEX_FAN_HOLDING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "dex_fan_holding_duration"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "dex_fan_holding_sender"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "Anonymous"

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->onFanHoldingEvent(Ljava/lang/String;I)V

    goto :goto_0

    :cond_9
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$900(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    :cond_a
    :goto_0
    return-void
.end method
