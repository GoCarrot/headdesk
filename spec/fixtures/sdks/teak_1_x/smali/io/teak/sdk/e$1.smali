.class final Lio/teak/sdk/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/e;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/e;


# direct methods
.method constructor <init>(Lio/teak/sdk/e;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/m;)V
    .locals 5
    .param p1    # Lio/teak/sdk/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    invoke-static {v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    invoke-static {v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "sdk_version"

    sget-object v3, Lio/teak/sdk/Teak;->Version:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    sget-object v2, Lio/teak/sdk/e$a;->a:Lio/teak/sdk/e$a;

    const-string v3, "sdk_init"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    sget-object v2, Lio/teak/sdk/e$a;->a:Lio/teak/sdk/e$a;

    const-string v3, "configuration.device"

    iget-object v4, p1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    invoke-virtual {v4}, Lio/teak/sdk/a/c;->b()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    invoke-static {v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "device_id"

    iget-object v3, p1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v3, v3, Lio/teak/sdk/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    sget-object v2, Lio/teak/sdk/e$a;->a:Lio/teak/sdk/e$a;

    const-string v3, "configuration.app"

    iget-object v4, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    invoke-virtual {v4}, Lio/teak/sdk/a/a;->a()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    invoke-static {v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "bundle_id"

    iget-object v3, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v3, v3, Lio/teak/sdk/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    invoke-static {v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "app_id"

    iget-object v3, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v3, v3, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    invoke-static {v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "client_app_version"

    iget-object v3, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget v3, v3, Lio/teak/sdk/a/a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    invoke-static {v0}, Lio/teak/sdk/e;->b(Lio/teak/sdk/e;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    invoke-static {v0}, Lio/teak/sdk/e;->b(Lio/teak/sdk/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/e$b;

    .line 187
    iget-object v4, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    invoke-static {v4, v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e;Lio/teak/sdk/e$b;)V

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 191
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 189
    :cond_0
    :try_start_3
    iget-object v0, p0, Lio/teak/sdk/e$1;->a:Lio/teak/sdk/e;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e;Z)Z

    .line 190
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void
.end method
