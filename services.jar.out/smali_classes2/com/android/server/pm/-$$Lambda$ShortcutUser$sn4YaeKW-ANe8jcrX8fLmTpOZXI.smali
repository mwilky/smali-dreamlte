.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutUser$sn4YaeKW-ANe8jcrX8fLmTpOZXI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/ShortcutUser;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/android/server/pm/ShortcutService;

.field private final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutUser;ZLcom/android/server/pm/ShortcutService;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$sn4YaeKW-ANe8jcrX8fLmTpOZXI;->f$0:Lcom/android/server/pm/ShortcutUser;

    iput-boolean p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$sn4YaeKW-ANe8jcrX8fLmTpOZXI;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$sn4YaeKW-ANe8jcrX8fLmTpOZXI;->f$2:Lcom/android/server/pm/ShortcutService;

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$sn4YaeKW-ANe8jcrX8fLmTpOZXI;->f$3:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$sn4YaeKW-ANe8jcrX8fLmTpOZXI;->f$0:Lcom/android/server/pm/ShortcutUser;

    iget-boolean v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$sn4YaeKW-ANe8jcrX8fLmTpOZXI;->f$1:Z

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$sn4YaeKW-ANe8jcrX8fLmTpOZXI;->f$2:Lcom/android/server/pm/ShortcutService;

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$sn4YaeKW-ANe8jcrX8fLmTpOZXI;->f$3:[I

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$mergeRestoredFile$3(Lcom/android/server/pm/ShortcutUser;ZLcom/android/server/pm/ShortcutService;[ILcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method
