.class final Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;
.super Landroid/os/Handler;
.source "BigDataLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/BigDataLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return-void
.end method
