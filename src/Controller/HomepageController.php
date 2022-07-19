<?php

namespace App\Controller;

use App\Repository\AboutRepository;
use App\Repository\DescriptionRepository;
use App\Repository\FaqRepository;
use App\Repository\RoadMapRepository;
use App\Repository\TeamRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomepageController extends AbstractController
{
    #[Route('/', name: 'homepage')]
    public function index(
        DescriptionRepository $descriptionRepository,
        AboutRepository $aboutRepository,
        FaqRepository $faqRepository,
        RoadMapRepository $roadMapRepository,
        TeamRepository $teamRepository
    ): Response
    {
        return $this->render('homepage/index.html.twig', [
            'descriptions' => $descriptionRepository->findAll(),
            'abouts' => $aboutRepository->findAll(),
            'faqs' => $faqRepository->findAll(),
            'road_maps' => $roadMapRepository->findAll(),
            'teams' => $teamRepository->findAll(),
        ]);
    }

    #[Route('/auction', name: 'auction')]
    public function auction(): Response
    {
        return $this->render('homepage/auction.html.twig', []);
    }
}
