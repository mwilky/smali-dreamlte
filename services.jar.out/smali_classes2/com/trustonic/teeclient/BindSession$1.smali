.class Lcom/trustonic/teeclient/BindSession$1;
.super Ljava/lang/Object;
.source "TeeBind.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustonic/teeclient/BindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trustonic/teeclient/BindSession;


# direct methods
.method constructor <init>(Lcom/trustonic/teeclient/BindSession;)V
    .locals 0

    iput-object p1, p0, Lcom/trustonic/teeclient/BindSession$1;->this$0:Lcom/trustonic/teeclient/BindSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
