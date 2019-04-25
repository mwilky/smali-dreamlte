.class Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;
.super Landroid/os/Handler;
.source "SemDeviceInfoTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-static {v0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->access$000(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;->onDeviceInfoTestModeChanged()V

    return-void
.end method
