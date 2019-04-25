.class Lcom/android/server/vr/Vr2dDisplay$3;
.super Ljava/lang/Object;
.source "Vr2dDisplay.java"

# interfaces
.implements Lcom/samsung/android/vr/IGearVrSurfaceCallback;


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

    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Landroid/view/Surface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->access$300(Lcom/android/server/vr/Vr2dDisplay;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v1}, Lcom/android/server/vr/Vr2dDisplay;->access$400(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v1}, Lcom/android/server/vr/Vr2dDisplay;->access$500(Lcom/android/server/vr/Vr2dDisplay;)Landroid/media/ImageReader;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v2}, Lcom/android/server/vr/Vr2dDisplay;->access$500(Lcom/android/server/vr/Vr2dDisplay;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/vr/Vr2dDisplay;->access$600(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/vr/Vr2dDisplay;->access$600(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v1, p1}, Lcom/android/server/vr/Vr2dDisplay;->access$600(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V

    goto :goto_0

    :cond_2
    const-string v1, "Vr2dDisplay"

    const-string v2, "Cannot set the surface because the VD is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
