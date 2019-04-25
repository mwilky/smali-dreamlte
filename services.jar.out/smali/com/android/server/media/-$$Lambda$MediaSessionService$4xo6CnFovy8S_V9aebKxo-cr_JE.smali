.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaSessionService$4xo6CnFovy8S_V9aebKxo-cr_JE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/-$$Lambda$MediaSessionService$4xo6CnFovy8S_V9aebKxo-cr_JE;->f$0:Lcom/android/server/media/MediaSessionService;

    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/-$$Lambda$MediaSessionService$4xo6CnFovy8S_V9aebKxo-cr_JE;->f$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->lambda$setupCustomRoutine$1(Lcom/android/server/media/MediaSessionService;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method
