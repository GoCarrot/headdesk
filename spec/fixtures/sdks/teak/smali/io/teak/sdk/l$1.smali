.class final Lio/teak/sdk/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/n;)V
    .locals 3
    .param p1    # Lio/teak/sdk/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    iget-object v0, p1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v0, v0, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lio/teak/sdk/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sdk_version"

    sget-object v2, Lio/teak/sdk/Teak;->Version:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "game_id"

    iget-object v2, p1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v2, v2, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "app_version"

    iget-object v2, p1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget v2, v2, Lio/teak/sdk/a/a;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "bundle_id"

    iget-object v2, p1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v2, v2, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v0, v0, Lio/teak/sdk/a/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "appstore_name"

    iget-object v2, p1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v2, v2, Lio/teak/sdk/a/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_id"

    iget-object v2, p1, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v2, v2, Lio/teak/sdk/a/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sdk_platform"

    iget-object v2, p1, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v2, v2, Lio/teak/sdk/a/d;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_manufacturer"

    iget-object v2, p1, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v2, v2, Lio/teak/sdk/a/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_model"

    iget-object v2, p1, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v2, v2, Lio/teak/sdk/a/d;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_fallback"

    iget-object v2, p1, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v2, v2, Lio/teak/sdk/a/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_memory_class"

    iget-object v2, p1, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget v2, v2, Lio/teak/sdk/a/d;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p1, Lio/teak/sdk/n;->a:Lio/teak/sdk/a/c;

    invoke-virtual {v0}, Lio/teak/sdk/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "debug"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_1
    return-void
.end method
