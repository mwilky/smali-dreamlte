.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$gXpm9iON84WxoeOerSeNctnL3M0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/ActivityManagerInternal;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManagerInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gXpm9iON84WxoeOerSeNctnL3M0;->f$0:Landroid/app/ActivityManagerInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gXpm9iON84WxoeOerSeNctnL3M0;->f$0:Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->lambda$gXpm9iON84WxoeOerSeNctnL3M0(Landroid/app/ActivityManagerInternal;)V

    return-void
.end method
