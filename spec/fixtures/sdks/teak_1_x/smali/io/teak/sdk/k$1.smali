.class final Lio/teak/sdk/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/m;)V
    .locals 3
    .param p1    # Lio/teak/sdk/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    iget-object v0, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v0, v0, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lio/teak/sdk/k;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sdk_version"

    sget-object v2, Lio/teak/sdk/Teak;->Version:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "game_id"

    iget-object v2, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v2, v2, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "app_version"

    iget-object v2, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget v2, v2, Lio/teak/sdk/a/a;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "bundle_id"

    iget-object v2, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v2, v2, Lio/teak/sdk/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v0, v0, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "appstore_name"

    iget-object v2, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v2, v2, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_id"

    iget-object v2, p1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v2, v2, Lio/teak/sdk/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sdk_platform"

    iget-object v2, p1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v2, v2, Lio/teak/sdk/a/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_manufacturer"

    iget-object v2, p1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v2, v2, Lio/teak/sdk/a/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_model"

    iget-object v2, p1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v2, v2, Lio/teak/sdk/a/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_fallback"

    iget-object v2, p1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v2, v2, Lio/teak/sdk/a/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_memory_class"

    iget-object v2, p1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget v2, v2, Lio/teak/sdk/a/c;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p1, Lio/teak/sdk/m;->a:Lio/teak/sdk/a/b;

    invoke-virtual {v0}, Lio/teak/sdk/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Lio/teak/sdk/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "debug"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    return-void
.end method
