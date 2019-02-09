.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
    }
.end annotation


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0
    .param p1, "gson"    # Lcom/google/gson/Gson;
        .annotation runtime Ljavax/inject/Named;
            value = "config-gson"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;->mGson:Lcom/google/gson/Gson;

    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
    .locals 7
    .param p1, "responseJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;->mGson:Lcom/google/gson/Gson;

    const-class v5, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;

    invoke-virtual {v4, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .local v1, "responses":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;
    :try_start_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 75
    .local v2, "resps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/dispatcher/EndpointResponse;>;"
    iget-object v4, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;->response:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 76
    iget-object v4, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;->response:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;

    .line 77
    .local v3, "rj":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;
    iget-object v5, v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;->type:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;->content:Lcom/google/gson/JsonElement;

    if-eqz v5, :cond_0

    .line 78
    iget-object v5, v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;->type:Ljava/lang/String;

    iget-object v6, v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;->content:Lcom/google/gson/JsonElement;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v1    # "responses":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;
    .end local v2    # "resps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/dispatcher/EndpointResponse;>;"
    .end local v3    # "rj":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_2
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 83
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v1    # "responses":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;
    .restart local v2    # "resps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/dispatcher/EndpointResponse;>;"
    :cond_1
    new-instance v4, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;

    iget-object v5, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseJson;->error:Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;-><init>(Ljava/util/Collection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4
.end method
