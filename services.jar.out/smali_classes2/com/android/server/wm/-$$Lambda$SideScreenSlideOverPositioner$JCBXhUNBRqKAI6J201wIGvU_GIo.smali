.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverPositioner$JCBXhUNBRqKAI6J201wIGvU_GIo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenSlideOverPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenSlideOverPositioner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverPositioner$JCBXhUNBRqKAI6J201wIGvU_GIo;->f$0:Lcom/android/server/wm/SideScreenSlideOverPositioner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverPositioner$JCBXhUNBRqKAI6J201wIGvU_GIo;->f$0:Lcom/android/server/wm/SideScreenSlideOverPositioner;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenSlideOverPositioner;->lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenSlideOverPositioner;)V

    return-void
.end method
