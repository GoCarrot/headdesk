.class public final Lio/teak/sdk/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/d/h$a;
    }
.end annotation


# instance fields
.field public final a:Lio/teak/sdk/d/h$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 26
    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v2, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lio/teak/sdk/d/h;->a(Landroid/content/res/XmlResourceParser;)Lio/teak/sdk/d/h$a;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/d/h;->a:Lio/teak/sdk/d/h$a;

    .line 30
    return-void
.end method

.method private static a(Landroid/content/res/XmlResourceParser;)Lio/teak/sdk/d/h$a;
    .locals 6
    .param p0    # Landroid/content/res/XmlResourceParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    :try_start_0
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 114
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 115
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    .line 117
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 119
    :try_start_1
    new-instance v1, Lio/teak/sdk/d/h$a;

    invoke-direct {v1, p0}, Lio/teak/sdk/d/h$a;-><init>(Landroid/content/res/XmlResourceParser;)V

    .line 120
    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    :goto_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextToken()I

    move-result v1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 122
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/teak/sdk/d/h$a;

    move-object v2, v0

    .line 123
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/teak/sdk/d/h$a;

    iget-object v1, v1, Lio/teak/sdk/d/h$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 131
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    .line 132
    :goto_2
    :try_start_2
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v3, v2}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 137
    :goto_3
    return-object v1

    .line 134
    :cond_2
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    move-object v1, v2

    .line 135
    goto :goto_3

    .line 134
    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1

    .line 131
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_2
.end method
