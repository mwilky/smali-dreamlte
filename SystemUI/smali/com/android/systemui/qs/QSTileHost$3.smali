.class Lcom/android/systemui/qs/QSTileHost$3;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSTileHost;->removeTile(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iput p2, p0, Lcom/android/systemui/qs/QSTileHost$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$400(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "QsWifiCallingTileIndex"

    iget v2, p0, Lcom/android/systemui/qs/QSTileHost$3;->val$index:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
