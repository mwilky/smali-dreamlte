.class Lcom/android/server/utils/sysfwutil/DexObserver$2;
.super Ljava/lang/Thread;
.source "DexObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/utils/sysfwutil/DexObserver;->onUpdateDexMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/sysfwutil/DexObserver;


# direct methods
.method constructor <init>(Lcom/android/server/utils/sysfwutil/DexObserver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/sysfwutil/DexObserver$2;->this$0:Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver$2;->this$0:Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-static {v0}, Lcom/android/server/utils/sysfwutil/DexObserver;->access$100(Lcom/android/server/utils/sysfwutil/DexObserver;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/sysfwutil/DexConnectionListener;

    invoke-interface {v1}, Lcom/android/server/utils/sysfwutil/DexConnectionListener;->onConnect()V

    goto :goto_0

    :cond_0
    return-void
.end method
