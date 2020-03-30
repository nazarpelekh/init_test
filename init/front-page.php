<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    <section class="top_panel">
        <div class="top_panel_img container" style="<?php echo (has_post_thumbnail() ? image_src( get_post_thumbnail_id( $post->ID ), 'full', true ) : 'background-image: url('. theme('images/top_primary.jpg') .')'); ?>"></div>
        <div class="top_panel_container container">
            <div class="scroll_down">
                <span><?php the_field('scroll_down_text') ?></span>
                <img src="<?php echo get_template_directory_uri() . '/images/arrow_down.jpg' ?>" alt="">
            </div>
            <?php the_content(); ?>
        </div>
    </section>
<?php endwhile; endif; ?>

<section class="vehicle">
    <div class="container">
        <?php the_field('vehicles_text') ?>
        <div class="posts_filters">
            <?php
            $man_terms = get_terms( [
                'taxonomy'   => 'manufacturer',
                'hide_empty' => true,
                'orderby'    => 'id'
            ] );
            $class_terms = get_terms( [
                'taxonomy'   => 'class',
                'hide_empty' => true,
                'orderby'    => 'id'
            ] );
            if ( !empty( $man_terms ) || !empty( $class_terms ) ) : ?>
                <div class="filters__row" data-aos="fade-in">
                    <form>
                        <input type="hidden" name="action" value="load_posts_ajax">
                        <input type="hidden" name="paged" value="1" id="show_page">
                        <div class="posts_filters__wrap flex__mob">
                            <div class="filters">
                                <div class="filters__holder">
                                    <select class="filters__dropdown filters__dropdown_man">
                                        <option value="*">Select Manufacturer</option>
                                        <?php foreach($man_terms as $term) : ?>
                                            <option value="<?php echo $term->slug; ?>"><?php echo $term->name; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="filters">
                                <div class="filters__holder">
                                    <select class="filters__dropdown filters__dropdown_class">
                                        <option value="*">Select Class</option>
                                        <?php foreach($class_terms as $term) : ?>
                                            <option value="<?php echo $term->slug; ?>"><?php echo $term->name; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <a href="javascript:;" class="button filter_button">Filter</a>
                        </div>
                    </form>
                </div>
            <?php endif; ?>
        </div>

        <div class="posts">
            <div class="posts_container">
                <?php load_posts_ajax(); ?>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>
