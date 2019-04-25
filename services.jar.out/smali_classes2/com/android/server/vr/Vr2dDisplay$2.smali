.class Lcom/android/server/vr/Vr2dDisplay$2;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "Vr2dDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/Vr2dDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/Vr2dDisplay;


# direct methods
.method constructor <init>(Lcom/android/server/vr/Vr2dDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x40

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/vr/Vr2dDisplay;->access$202(Lcom/android/server/vr/Vr2dDisplay;Z)Z

    const-string v0, "Vr2dDisplay"

    const-string/jumbo v1, "vr persistent exited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->access$100(Lcom/android/server/vr/Vr2dDisplay;)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/vr/Vr2dDisplay;->access$202(Lcom/android/server/vr/Vr2dDisplay;Z)Z

    const-string v0, "Vr2dDisplay"

    const-string/jumbo v1, "vr persistent entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->access$100(Lcom/android/server/vr/Vr2dDisplay;)V

    :cond_2
    :goto_0
    return-void
.end method
