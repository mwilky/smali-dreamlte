.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenFixedPositioner$QOgCSR_1dWMOV5vtzZjEYAJxRq0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenFixedPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenFixedPositioner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenFixedPositioner$QOgCSR_1dWMOV5vtzZjEYAJxRq0;->f$0:Lcom/android/server/wm/SideScreenFixedPositioner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenFixedPositioner$QOgCSR_1dWMOV5vtzZjEYAJxRq0;->f$0:Lcom/android/server/wm/SideScreenFixedPositioner;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenFixedPositioner;->lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenFixedPositioner;)V

    return-void
.end method