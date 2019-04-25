.class Lcom/android/server/policy/PhoneWindowManager$22;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x40

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x100000

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$4102(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4102(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    if-ne p2, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$4302(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    if-ne p2, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4302(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4400(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->getVrSystemUiMode()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x7

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManager;->access$4100(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManager;->access$4200(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManager;->access$4300(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    invoke-static {v5, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4402(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4400(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v2

    if-eq v2, v0, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4400(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/policy/PolicyControl;->setVrImmersiveMode(Z)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
