.class Lcom/android/server/policy/SamsungPhoneWindowManager$25;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->registerGearVrStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2502(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2402(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2402(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2502(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2602(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2602(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
