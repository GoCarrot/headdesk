.class Lcom/upsight/android/unity/UnitySessionCallbacks$1;
.super Ljava/lang/Object;
.source "UnitySessionCallbacks.java"

# interfaces
.implements Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UnitySessionCallbacks;->onStart(Lcom/upsight/android/analytics/provider/UpsightSessionContext;Lcom/upsight/android/analytics/session/UpsightSessionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UnitySessionCallbacks;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UnitySessionCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/unity/UnitySessionCallbacks;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/upsight/android/unity/UnitySessionCallbacks$1;->this$0:Lcom/upsight/android/unity/UnitySessionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/upsight/android/unity/UnitySessionCallbacks;->access$000()Z

    move-result v0

    return v0
.end method

.method public onSynchronize(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "UnitySessionCallbacks"

    const-string v3, "onSynchronize"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 47
    .local v0, "json":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    .local v1, "t":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 50
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    const-string v2, "managedVariablesDidSynchronize"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/upsight/android/unity/UnityBridge;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
