.class Lcom/android/server/policy/ImmersiveModeConfirmation$5;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v0, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v0, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrEntered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v0, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrPersistentVrMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/16 v3, 0x40

    const/4 v4, 0x2

    if-eq p1, v3, :cond_3

    const/16 v3, 0x80

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v1, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v2, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v1, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrEntered:Z

    if-ne p2, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v1, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrPersistentVrMode:Z

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v2, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrEntered:Z

    if-ne p2, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v2, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrPersistentVrMode:Z

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v5, v5, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v5, v5, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrEntered:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v5, v5, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrPersistentVrMode:Z

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    goto :goto_4

    :cond_6
    :goto_3
    move v1, v2

    :goto_4
    iput-boolean v1, v3, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrRunning:Z

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v1, v1, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrRunning:Z

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v1, v1, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrRunning:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$100(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$5;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$100(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
