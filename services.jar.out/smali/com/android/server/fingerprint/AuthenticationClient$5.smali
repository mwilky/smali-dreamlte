.class Lcom/android/server/fingerprint/AuthenticationClient$5;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/AuthenticationClient;->start()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$800(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$800(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->access$502(Lcom/android/server/fingerprint/AuthenticationClient;Z)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v2, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$502(Lcom/android/server/fingerprint/AuthenticationClient;Z)Z

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->access$702(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$900(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/SemVisualEffectView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$900(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/SemVisualEffectView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$1002(Lcom/android/server/fingerprint/AuthenticationClient;I)I

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$1100(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$1000(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$900(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/SemVisualEffectView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/SemVisualEffectView;->addToWindowManager(Z)Z

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$1000(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$1102(Lcom/android/server/fingerprint/AuthenticationClient;I)I

    :cond_3
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
