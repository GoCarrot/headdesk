.class public final Lio/teak/sdk/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/teak/sdk/g/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Lio/teak/sdk/g/a;

.field private static c:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/n;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/l;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    const-class v1, Lio/teak/sdk/g/a/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/g/b;
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lio/teak/sdk/g/c;->b:Lio/teak/sdk/g/a;

    if-nez v0, :cond_0

    .line 93
    invoke-static {p0}, Lio/teak/sdk/g/c;->a(Landroid/content/Context;)Z

    move-result v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lio/teak/sdk/g/b;

    const-string v1, "No default launcher available"

    invoke-direct {v0, v1}, Lio/teak/sdk/g/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    :try_start_0
    sget-object v0, Lio/teak/sdk/g/c;->b:Lio/teak/sdk/g/a;

    sget-object v1, Lio/teak/sdk/g/c;->c:Landroid/content/ComponentName;

    invoke-interface {v0, p0, v1, p1}, Lio/teak/sdk/g/a;->a(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Lio/teak/sdk/g/b;

    const-string v2, "Unable to execute badge"

    invoke-direct {v1, v2, v0}, Lio/teak/sdk/g/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    if-nez v0, :cond_0

    .line 194
    const-string v0, "ShortcutBadger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find launch intent for package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    .line 198
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lio/teak/sdk/g/c;->c:Landroid/content/ComponentName;

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 205
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 207
    sget-object v0, Lio/teak/sdk/g/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 208
    const/4 v1, 0x0

    .line 210
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/g/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/teak/sdk/g/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    sput-object v0, Lio/teak/sdk/g/c;->b:Lio/teak/sdk/g/a;

    .line 218
    :cond_3
    sget-object v0, Lio/teak/sdk/g/c;->b:Lio/teak/sdk/g/a;

    if-eqz v0, :cond_1

    .line 223
    :cond_4
    sget-object v0, Lio/teak/sdk/g/c;->b:Lio/teak/sdk/g/a;

    if-nez v0, :cond_5

    .line 224
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "ZUK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    new-instance v0, Lio/teak/sdk/g/a/n;

    invoke-direct {v0}, Lio/teak/sdk/g/a/n;-><init>()V

    sput-object v0, Lio/teak/sdk/g/c;->b:Lio/teak/sdk/g/a;

    .line 236
    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 226
    :cond_6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    new-instance v0, Lio/teak/sdk/g/a/i;

    invoke-direct {v0}, Lio/teak/sdk/g/a/i;-><init>()V

    sput-object v0, Lio/teak/sdk/g/c;->b:Lio/teak/sdk/g/a;

    goto :goto_2

    .line 228
    :cond_7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 229
    new-instance v0, Lio/teak/sdk/g/a/l;

    invoke-direct {v0}, Lio/teak/sdk/g/a/l;-><init>()V

    sput-object v0, Lio/teak/sdk/g/c;->b:Lio/teak/sdk/g/a;

    goto :goto_2

    .line 230
    :cond_8
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "ZTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 231
    new-instance v0, Lio/teak/sdk/g/a/m;

    invoke-direct {v0}, Lio/teak/sdk/g/a/m;-><init>()V

    sput-object v0, Lio/teak/sdk/g/c;->b:Lio/teak/sdk/g/a;

    goto :goto_2

    .line 233
    :cond_9
    new-instance v0, Lio/teak/sdk/g/a/d;

    invoke-direct {v0}, Lio/teak/sdk/g/a/d;-><init>()V

    sput-object v0, Lio/teak/sdk/g/c;->b:Lio/teak/sdk/g/a;

    goto :goto_2
.end method
