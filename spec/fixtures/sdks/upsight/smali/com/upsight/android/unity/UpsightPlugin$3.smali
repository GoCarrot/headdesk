.class Lcom/upsight/android/unity/UpsightPlugin$3;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->purgeLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$3;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin$3;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v0, v0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->purge(Lcom/upsight/android/UpsightContext;)V

    .line 163
    return-void
.end method
