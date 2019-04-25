.class Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartThingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartthings/SmartThingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartthings/SmartThingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/smartthings/SmartThingsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;->this$0:Lcom/android/server/smartthings/SmartThingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/smartthings/SmartThingsService;Lcom/android/server/smartthings/SmartThingsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;-><init>(Lcom/android/server/smartthings/SmartThingsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x304ed112

    if-eq v2, v3, :cond_2

    const v3, 0x5c1076e2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;->this$0:Lcom/android/server/smartthings/SmartThingsService;

    invoke-static {v1, p1}, Lcom/android/server/smartthings/SmartThingsService;->access$100(Lcom/android/server/smartthings/SmartThingsService;Landroid/content/Context;)V

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
